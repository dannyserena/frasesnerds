//
//  ViewController.swift
//  frasesnerds
//
//  Created by user119214 on 6/9/16.
//  Copyright © 2016 user119214. All rights reserved.
//

import UIKit
import Social

class ViewController: UITableViewController {
    // lista esta estatica
    let lista = ["Sou tão nerd que quando uma garota perguntou qual é o caminho para chegar até o meu coração e eu respondi: C:/WINDOWS/SYSTEM32/HEART.EXE", "Não trate como Android quem te trata como Java.", "Gata, eu não sou vídeo game, mas quando estiver triste, talvez eu te CONSOLE."]
//metodo usado para carregar a tela e é herdado da classe viewcontroler
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    //botao sobre vai atuar como alerta
    @IBAction func sobre(sender: AnyObject) {
       
        
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.lista.count // retorna a lista com array
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)-> UITableViewCell {
        let row = indexPath.row // pega valor da linha
        //let cell = UITableViewCell(style: UITableViewCellStyle.Default,reuseIdentifier: nil)
        let cell = tableView.dequeueReusableCellWithIdentifier("celula", forIndexPath: indexPath) as! FraseTableViewCell
        cell.fra.text = lista[row]
        //cell.textLabel!.text = lista[row] // a linha é carregada na lista
        return cell
    }
    // botao de mais informações
    @IBAction func clicarAction(sender: AnyObject) {
        _ = UIAlertController(title: "Atenção",message: "FrasesNerdsAPP, desenvolvidor por Danielle", preferredStyle: .Alert)
    }
    
    // botao para compartihar com o Facebook
    @IBAction func facebookBtn(sender: AnyObject){
        
    
    //    if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
      //      let fbShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
    
      //      self.presentViewController(fbShare, animated: true, completion: nil)
    
   // } else {
    //        let alert = UIAlertController(title: "Conta", message: "Logue na sua conta do Facebook para compartilhar.", preferredStyle: UIAlertControllerStyle.Alert)
            
       //     alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
      //      self.presentViewController(alert, animated: true, completion: nil)
      //  }
   // }
    
        let compartilhar = UIActivityViewController (activityItems: [lista[0]], applicationActivities:[])
        self.presentViewController(compartilhar, animated: true, completion: nil)
}
}




