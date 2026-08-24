// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkersForPlatformsNamespace resources.
class WorkersForPlatformsNamespaceState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Identifier.
  final pulumi.Input<String?>? createdBy;
  /// When the script was created.
  final pulumi.Input<String?>? createdOn;
  /// Identifier.
  final pulumi.Input<String?>? modifiedBy;
  /// When the script was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The name of the dispatch namespace.
  final pulumi.Input<String?>? name;
  /// API Resource UUID tag.
  final pulumi.Input<String?>? namespaceId;
  /// Name of the Workers for Platforms dispatch namespace.
  final pulumi.Input<String?>? namespaceName;
  /// The current number of scripts in this Dispatch Namespace.
  final pulumi.Input<int?>? scriptCount;
  /// Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  final pulumi.Input<bool?>? trustedWorkers;

  /// Creates a new [WorkersForPlatformsNamespaceState].
  /// [accountId] Identifier.
  /// [createdBy] Identifier.
  /// [createdOn] When the script was created.
  /// [modifiedBy] Identifier.
  /// [modifiedOn] When the script was last modified.
  /// [name] The name of the dispatch namespace.
  /// [namespaceId] API Resource UUID tag.
  /// [namespaceName] Name of the Workers for Platforms dispatch namespace.
  /// [scriptCount] The current number of scripts in this Dispatch Namespace.
  /// [trustedWorkers] Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  const WorkersForPlatformsNamespaceState({
    this.accountId,
    this.createdBy,
    this.createdOn,
    this.modifiedBy,
    this.modifiedOn,
    this.name,
    this.namespaceId,
    this.namespaceName,
    this.scriptCount,
    this.trustedWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdBy': ?createdBy,
      'createdOn': ?createdOn,
      'modifiedBy': ?modifiedBy,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'scriptCount': ?scriptCount,
      'trustedWorkers': ?trustedWorkers,
    };
  }

  factory WorkersForPlatformsNamespaceState.fromMap(Map<String, dynamic> map) {
    return WorkersForPlatformsNamespaceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptCount: (() { final guardedValue = map['scriptCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      trustedWorkers: (() { final guardedValue = map['trustedWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
