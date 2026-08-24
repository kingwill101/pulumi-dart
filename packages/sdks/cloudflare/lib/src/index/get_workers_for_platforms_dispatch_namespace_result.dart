// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkersForPlatformsDispatchNamespace.
class GetWorkersForPlatformsDispatchNamespaceResult {
  /// Identifier.
  final String? accountId;
  /// Identifier.
  final String? createdBy;
  /// When the script was created.
  final String? createdOn;
  /// Name of the Workers for Platforms dispatch namespace.
  final String? dispatchNamespace;
  /// Name of the Workers for Platforms dispatch namespace.
  final String? id;
  /// Identifier.
  final String? modifiedBy;
  /// When the script was last modified.
  final String? modifiedOn;
  /// API Resource UUID tag.
  final String? namespaceId;
  /// Name of the Workers for Platforms dispatch namespace.
  final String? namespaceName;
  /// The current number of scripts in this Dispatch Namespace.
  final int? scriptCount;
  /// Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  final bool? trustedWorkers;

  /// Creates a new [GetWorkersForPlatformsDispatchNamespaceResult].
  /// [accountId] Identifier.
  /// [createdBy] Identifier.
  /// [createdOn] When the script was created.
  /// [dispatchNamespace] Name of the Workers for Platforms dispatch namespace.
  /// [id] Name of the Workers for Platforms dispatch namespace.
  /// [modifiedBy] Identifier.
  /// [modifiedOn] When the script was last modified.
  /// [namespaceId] API Resource UUID tag.
  /// [namespaceName] Name of the Workers for Platforms dispatch namespace.
  /// [scriptCount] The current number of scripts in this Dispatch Namespace.
  /// [trustedWorkers] Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  const GetWorkersForPlatformsDispatchNamespaceResult({
    this.accountId,
    this.createdBy,
    this.createdOn,
    this.dispatchNamespace,
    this.id,
    this.modifiedBy,
    this.modifiedOn,
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
      'dispatchNamespace': ?dispatchNamespace,
      'id': ?id,
      'modifiedBy': ?modifiedBy,
      'modifiedOn': ?modifiedOn,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'scriptCount': ?scriptCount,
      'trustedWorkers': ?trustedWorkers,
    };
  }

  factory GetWorkersForPlatformsDispatchNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersForPlatformsDispatchNamespaceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dispatchNamespace: (() { final guardedValue = map['dispatchNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptCount: (() { final guardedValue = map['scriptCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      trustedWorkers: (() { final guardedValue = map['trustedWorkers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
