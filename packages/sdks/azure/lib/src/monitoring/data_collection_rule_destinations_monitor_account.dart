// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDestinationsMonitorAccount {
  /// The resource ID of the Monitor Account.
  final pulumi.Input<String> monitorAccountId;
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Creates a new [DataCollectionRuleDestinationsMonitorAccount].
  /// [monitorAccountId] The resource ID of the Monitor Account.
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  DataCollectionRuleDestinationsMonitorAccount({
    required this.monitorAccountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorAccountId': monitorAccountId,
      'name': name,
    };
  }

  factory DataCollectionRuleDestinationsMonitorAccount.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsMonitorAccount(
      monitorAccountId: (map['monitorAccountId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

