//This script creates all the nodes for the parties of the election
//Each party has a property of name, the number of candidates in that party, 
//how many were elected, the party leader, and the party colour

CREATE (`nFine Gael`:Party {name:"Fine Gael", candidates:88, elected:49, leader:"Enda Kenny", colour:"Blue"}),
(`nFianna Fail`:Party {name:"Fianna Fail", candidates:71, elected:44, leader:"Micheal Martin", colour:"Green"}),
(`nSinn Fein`:Party {name:"Sinn Fein", candidates:50, elected:23, leader:"Gerry Adams", colour:"Green"}),
(`nLabour Party`:Party {name:"Labour Party", candidates:36, elected:7, leader:"Joan Burton", colour:"Red"}),
(`nAAA-PBP`:Party {name:"AAA-PBP", candidates:31, elected:6, leader:"null", colour:"null"}),
(`nIndependents 4 Change`:Party {name:"Independents 4 Change", candidates:5, elected:4, leader:"null", colour:"null"}),
(`nSocial Democrats`:Party {name:"Social Democrats", candidates:14, elected:3, leader:"Catherine Murphy, Roisin Shortall, Stephen Donnelly", colour:"Purple"}),
(`nGreen Party`:Party {name:"Green Party", candidates:40, elected:2, leader:"Eamon Ryan", colour:"Green and Gold"}),
(`nRenua Ireland`:Party {name:"Renua Ireland", candidates:26, elected:0, leader:"Lucinda Creighton", colour:"Orange"}),
(`nDirect Democracy`:Party {name:"Direct Democracy", candidates:19, elected:0, leader:"Pat Greene", colour:"Blue,Green"}),
(`nWorkers Party`:Party {name:"Workers Party", candidates:5, elected:0, leader:"Michael Donnally", colour:"Red, Green"}),
(`nCatholic Democrats`:Party {name:"Catholic Democrats", candidates:3, elected:0, leader:"Nora Bennis", colour:"null"}),
(`nFis Nua`:Party {name:"Fis Nua", candidates:2, elected:0, leader:"null", colour:"null"}),
(`nIrish Democratic Party`:Party {name:"Irish Democratic Party", candidates:1, elected:0, leader:"Ken Smollen", colour:"null"}),
(`nCommunist Party`:Party {name:"Communist Party", candidates:1, elected:0, leader:"Lynda Walker", colour:"null"}),
(`nIdentity Ireland`:Party {name:"Identity Ireland", candidates:1, elected:0, leader:"Peter O'Loughlin", colour:"null"}),
(`nIndependent Alliance`:Party {name:"Independent Alliance", candidates:21, elected:6, leader:"null", colour:"null"}),
(`nIndependent`:Party {name:"Independent", candidates:136, elected:13, leader:"null", colour:"null"});