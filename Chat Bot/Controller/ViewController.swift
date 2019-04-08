//
//  ViewController.swift
//  Chat Bot
//
//  Created by Denis Bystruev on 08/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var messages = Message.loadSample()

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
    }
    
    
    @IBAction func questionAsked(_ sender: UITextField) {
        guard let text = sender.text else { return }
        let question = Message(isAnswer: false, timestamp: Date(), text: text)
        let answer = question.answer()
        messages += [question, answer]
        sender.text = ""
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let message = messages[row]
        let cell = getCell(for: message)
        
        return cell
    }
    
    func getCell(for message: Message) -> UITableViewCell {
        let isAnswer = message.isAnswer
        let cellID = isAnswer ? "AnswerCell" : "QuestionCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! MessageCell
        
        cell.timestampLabel.text = "\(message.timestamp)"
        
        if isAnswer {
            cell.answerLabel.text = message.text
        } else {
            cell.questionLabel.text = message.text
        }
        
        return cell
    }
}
