// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing compute engine instance filter
class GceInstanceFilter {
  /// Service account of compute engine
  final pulumi.Input<List<String>>? serviceAccounts;

  /// Creates a new [GceInstanceFilter].
  /// [serviceAccounts] Service account of compute engine
  GceInstanceFilter({this.serviceAccounts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceAccounts': ?serviceAccounts};
  }

  factory GceInstanceFilter.fromMap(Map<String, dynamic> map) {
    return GceInstanceFilter(
      serviceAccounts: (() {
        final guardedValue = map['serviceAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
