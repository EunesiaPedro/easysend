import 'package:easysend/feature/transactions.dart';


List<history> geter() {
  history transfer = history();
  transfer.name = "transfer";
  transfer.time = "today";
  transfer.recipient = " Liria Santos";
  transfer.image= "bank.jpg";
  transfer.amount = "\$ 160";




  return [transfer];


}
