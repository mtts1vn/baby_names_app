import 'package:nomesapp/src/controllers/db_controller.dart';

void main() async {
  var res = await DB().getByName('Beatriz');

  print(res);
}
