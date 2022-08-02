final recentTransaction = <RecentTransaction> [
  RecentTransaction('images/Group 1000003401.png','Incoming','22 Apr, 13:42','5,000','pending',true),
  RecentTransaction('images/Group 1000003402.png','Outgoing','22 Apr, 09:57','-15,000','success',false),
  RecentTransaction('images/Group 1000003402.png','Outgoing','21 Apr, 22:12','-7,000','failed',true),
  RecentTransaction('images/Group 1000003401.png','Incoming','19 Apr, 11:23','+5,000','success',false),
  RecentTransaction('images/Group 1000003402.png','Outgoing','21 Apr, 22:12','-7,000','failed',true),
  RecentTransaction('images/Group 1000003401.png','Incoming','19 Apr, 11:23','+5,000','success',false),

];

class RecentTransaction {
   final String icon, text,date,amount,trans;
   final bool isCredit;

  RecentTransaction(this.icon, this.text, this.date, this.amount, this.trans, this.isCredit);
}