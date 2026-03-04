// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentExtensionsBlockList {
  /// Publisher of the extension.
  final pulumi.Input<String> publisher;

  /// The identity type.
  final pulumi.Input<String> type;

  /// Creates a new [GetAgentExtensionsBlockList].
  /// [publisher] Publisher of the extension.
  /// [type] The identity type.
  GetAgentExtensionsBlockList({required this.publisher, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'publisher': publisher, 'type': type};
  }

  factory GetAgentExtensionsBlockList.fromMap(Map<String, dynamic> map) {
    return GetAgentExtensionsBlockList(
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
