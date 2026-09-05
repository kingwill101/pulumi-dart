// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_web_test_validation_rules_content.dart';

class StandardWebTestValidationRules {
  /// A `content` block as defined above.
  final pulumi.Input<StandardWebTestValidationRulesContent?>? content;
  /// The expected status code of the response. Default is '200', '0' means 'response code &lt; 400'
  final pulumi.Input<int?>? expectedStatusCode;
  /// The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
  final pulumi.Input<int?>? sslCertRemainingLifetime;
  /// Should the SSL check be enabled?
  final pulumi.Input<bool?>? sslCheckEnabled;

  /// Creates a new [StandardWebTestValidationRules].
  /// [content] A `content` block as defined above.
  /// [expectedStatusCode] The expected status code of the response. Default is '200', '0' means 'response code &lt; 400'
  /// [sslCertRemainingLifetime] The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
  /// [sslCheckEnabled] Should the SSL check be enabled?
  const StandardWebTestValidationRules({
    this.content,
    this.expectedStatusCode,
    this.sslCertRemainingLifetime,
    this.sslCheckEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?pulumi.Input.mapOptionalInputValue<StandardWebTestValidationRulesContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'expectedStatusCode': ?expectedStatusCode,
      'sslCertRemainingLifetime': ?sslCertRemainingLifetime,
      'sslCheckEnabled': ?sslCheckEnabled,
    };
  }

  factory StandardWebTestValidationRules.fromMap(Map<String, dynamic> map) {
    return StandardWebTestValidationRules(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardWebTestValidationRulesContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectedStatusCode: (() { final guardedValue = map['expectedStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sslCertRemainingLifetime: (() { final guardedValue = map['sslCertRemainingLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sslCheckEnabled: (() { final guardedValue = map['sslCheckEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
