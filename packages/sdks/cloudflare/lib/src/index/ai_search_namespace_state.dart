// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiSearchNamespace resources.
class AiSearchNamespaceState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Optional description for the namespace. Max 256 characters.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;

  /// Creates a new [AiSearchNamespaceState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Optional.
  const AiSearchNamespaceState({
    this.accountId,
    this.createdAt,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
    };
  }

  factory AiSearchNamespaceState.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespaceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
