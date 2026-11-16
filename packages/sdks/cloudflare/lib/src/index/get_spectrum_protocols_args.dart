// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spectrum_protocols_get_spectrum_protocols_args_doc}
/// Arguments for getSpectrumProtocols.
/// {@endtemplate}
/// {@macro pulumi_index_get_spectrum_protocols_get_spectrum_protocols_args_doc}
class GetSpectrumProtocolsArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Zone identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetSpectrumProtocolsArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Zone identifier.
  const GetSpectrumProtocolsArgs({
    this.maxItems,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': zoneId,
    };
  }

  factory GetSpectrumProtocolsArgs.fromMap(Map<String, dynamic> map) {
    return GetSpectrumProtocolsArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
