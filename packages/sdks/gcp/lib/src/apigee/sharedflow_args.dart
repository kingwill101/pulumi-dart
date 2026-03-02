// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_sharedflow_sharedflow_args_doc}
/// The set of arguments for Sharedflow.
/// {@endtemplate}
/// {@macro pulumi_apigee_sharedflow_sharedflow_args_doc}
class SharedflowArgs {
  /// Path to the config zip bundle.
  ///
  /// - - -
  final pulumi.Input<String> configBundle;
  final pulumi.Input<String>? detectMd5hash;
  /// The ID of the shared flow.
  final pulumi.Input<String>? name;
  /// The Apigee Organization name associated with the Apigee instance.
  final pulumi.Input<String> orgId;

  /// Creates a new [SharedflowArgs].
  /// [configBundle] Path to the config zip bundle.
  /// [detectMd5hash] Optional.
  /// [name] The ID of the shared flow.
  /// [orgId] The Apigee Organization name associated with the Apigee instance.
  SharedflowArgs({
    required this.configBundle,
    this.detectMd5hash,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configBundle': configBundle,
      'detectMd5hash': ?detectMd5hash,
      'name': ?name,
      'orgId': orgId,
    };
  }

  factory SharedflowArgs.fromMap(Map<String, dynamic> map) {
    return SharedflowArgs(
      configBundle: (map['configBundle'] as String).input(),
      detectMd5hash: map['detectMd5hash'] == null ? null : (map['detectMd5hash']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: (map['orgId'] as String).input(),
    );
  }
}

