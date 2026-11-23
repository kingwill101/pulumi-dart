// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigCustomInfoTypeMetadataKeyValueExpression {
  /// The regular expression for the key.
  final pulumi.Input<String> keyRegex;
  /// The regular expression for the value.
  final pulumi.Input<String> valueRegex;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeMetadataKeyValueExpression].
  /// [keyRegex] The regular expression for the key.
  /// [valueRegex] The regular expression for the value.
  const PreventionInspectTemplateInspectConfigCustomInfoTypeMetadataKeyValueExpression({
    required this.keyRegex,
    required this.valueRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyRegex': keyRegex,
      'valueRegex': valueRegex,
    };
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeMetadataKeyValueExpression.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeMetadataKeyValueExpression(
      keyRegex: pulumi.Input.fromValue(map['keyRegex'] as String),
      valueRegex: pulumi.Input.fromValue(map['valueRegex'] as String),
    );
  }
}
