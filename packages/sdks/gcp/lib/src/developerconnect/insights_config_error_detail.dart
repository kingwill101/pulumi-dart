// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsConfigErrorDetail {
  /// (Output)
  /// A message with details about the error.
  final pulumi.Input<String?>? detailMessage;

  /// Creates a new [InsightsConfigErrorDetail].
  /// [detailMessage] (Output)
  const InsightsConfigErrorDetail({
    this.detailMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailMessage': ?detailMessage,
    };
  }

  factory InsightsConfigErrorDetail.fromMap(Map<String, dynamic> map) {
    return InsightsConfigErrorDetail(
      detailMessage: (() { final guardedValue = map['detailMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
