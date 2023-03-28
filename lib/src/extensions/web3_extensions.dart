import 'string_extensions.dart';

extension Web3StringExtension on String {
  BigInt toWei() =>
      isPositiveDouble() ? double.parse(this).toWei() : BigInt.zero;
}

extension Web3DoubleExtension on double {
  BigInt toWei() => BigInt.from(this * 1e18);
}

extension Web3BigIntExtension on BigInt {
  double toEth() => this / BigInt.from(1e18);
}
