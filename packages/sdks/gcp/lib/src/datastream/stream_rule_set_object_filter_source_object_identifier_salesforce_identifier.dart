// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier {
  /// The Salesforce object name.
  final pulumi.Input<String> objectName;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier].
  /// [objectName] The Salesforce object name.
  const StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier({
    required this.objectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectName': objectName,
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier(
      objectName: pulumi.Input.fromValue(map['objectName'] as String),
    );
  }
}

