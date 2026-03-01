// ignore_for_file: unused_element, unnecessary_cast


class StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier {
  /// The Salesforce object name.
  final String objectName;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier].
  /// [objectName] The Salesforce object name.
  StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier({
    required this.objectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectName': objectName,
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier(
      objectName: map['objectName'] as String,
    );
  }
}

