// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_worker_version_get_worker_version_args_doc}
/// Arguments for getWorkerVersion.
/// {@endtemplate}
/// {@macro pulumi_index_get_worker_version_get_worker_version_args_doc}
class GetWorkerVersionArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Whether to include the `modules` property of the version in the response, which contains code and sourcemap content and may add several megabytes to the response size.
  /// Available values: "modules".
  final pulumi.Input<String?>? include;
  /// Identifier for the version, which can be a UUID, a UUID prefix (minimum length 8), or the literal "latest" to operate on the most recently created version.
  final pulumi.Input<String> versionId;
  /// Identifier for the Worker, which can be ID or name.
  final pulumi.Input<String> workerId;

  /// Creates a new [GetWorkerVersionArgs].
  /// [accountId] Identifier.
  /// [include] Whether to include the `modules` property of the version in the response, which contains code and sourcemap content and may add several megabytes to the response size.
  /// [versionId] Identifier for the version, which can be a UUID, a UUID prefix (minimum length 8), or the literal "latest" to operate on the most recently created version.
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const GetWorkerVersionArgs({
    required this.accountId,
    this.include,
    required this.versionId,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'include': ?include,
      'versionId': versionId,
      'workerId': workerId,
    };
  }

  factory GetWorkerVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
