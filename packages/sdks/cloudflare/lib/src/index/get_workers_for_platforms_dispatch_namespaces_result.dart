// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersForPlatformsDispatchNamespacesResult {
  /// Identifier.
  final pulumi.Input<String> createdBy;
  /// When the script was created.
  final pulumi.Input<String> createdOn;
  /// Name of the Workers for Platforms dispatch namespace.
  final pulumi.Input<String> id;
  /// Identifier.
  final pulumi.Input<String> modifiedBy;
  /// When the script was last modified.
  final pulumi.Input<String> modifiedOn;
  /// API Resource UUID tag.
  final pulumi.Input<String> namespaceId;
  /// The current number of scripts in this Dispatch Namespace.
  final pulumi.Input<int> scriptCount;
  /// Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  final pulumi.Input<bool> trustedWorkers;

  /// Creates a new [GetWorkersForPlatformsDispatchNamespacesResult].
  /// [createdBy] Identifier.
  /// [createdOn] When the script was created.
  /// [id] Name of the Workers for Platforms dispatch namespace.
  /// [modifiedBy] Identifier.
  /// [modifiedOn] When the script was last modified.
  /// [namespaceId] API Resource UUID tag.
  /// [scriptCount] The current number of scripts in this Dispatch Namespace.
  /// [trustedWorkers] Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  const GetWorkersForPlatformsDispatchNamespacesResult({
    required this.createdBy,
    required this.createdOn,
    required this.id,
    required this.modifiedBy,
    required this.modifiedOn,
    required this.namespaceId,
    required this.scriptCount,
    required this.trustedWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': createdBy,
      'createdOn': createdOn,
      'id': id,
      'modifiedBy': modifiedBy,
      'modifiedOn': modifiedOn,
      'namespaceId': namespaceId,
      'scriptCount': scriptCount,
      'trustedWorkers': trustedWorkers,
    };
  }

  factory GetWorkersForPlatformsDispatchNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersForPlatformsDispatchNamespacesResult(
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      scriptCount: pulumi.Input.fromValue((map['scriptCount'] as num).toInt()),
      trustedWorkers: pulumi.Input.fromValue(map['trustedWorkers'] as bool),
    );
  }
}
