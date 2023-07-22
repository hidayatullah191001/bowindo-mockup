part of 'shared.dart';

String hashSHA256({required String text}) {
  var bytes1 = utf8.encode(text);
  var digiest1 = sha256.convert(bytes1);
  return digiest1.toString();
}
