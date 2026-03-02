// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentExtensionsAllowList {
  /// Publisher of the extension.
  final pulumi.Input<String> publisher;
  /// The identity type.
  final pulumi.Input<String> type;

  /// Creates a new [GetAgentExtensionsAllowList].
  /// [publisher] Publisher of the extension.
  /// [type] The identity type.
  GetAgentExtensionsAllowList({
    required this.publisher,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisher': publisher,
      'type': type,
    };
  }

  factory GetAgentExtensionsAllowList.fromMap(Map<String, dynamic> map) {
    return GetAgentExtensionsAllowList(
      publisher: (map['publisher'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

