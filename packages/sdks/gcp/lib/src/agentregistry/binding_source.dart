// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BindingSource {
  /// The identifier of the source Agent. Format: `urn:agent:{publisher}:{namespace}:{name}`
  final pulumi.Input<String> identifier;

  /// Creates a new [BindingSource].
  /// [identifier] The identifier of the source Agent. Format: `urn:agent:{publisher}:{namespace}:{name}`
  const BindingSource({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
    };
  }

  factory BindingSource.fromMap(Map<String, dynamic> map) {
    return BindingSource(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
