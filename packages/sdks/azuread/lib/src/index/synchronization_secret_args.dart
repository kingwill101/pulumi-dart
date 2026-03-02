// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_secret_credential.dart';

/// {@template pulumi_index_synchronization_secret_synchronization_secret_args_doc}
/// The set of arguments for SynchronizationSecret.
/// {@endtemplate}
/// {@macro pulumi_index_synchronization_secret_synchronization_secret_args_doc}
class SynchronizationSecretArgs {
  /// One or more `credential` blocks as documented below.
  final pulumi.Input<List<SynchronizationSecretCredential>>? credentials;
  /// The ID of the service principal for which this synchronization secrets should be stored. Changing this field forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalId;

  /// Creates a new [SynchronizationSecretArgs].
  /// [credentials] One or more `credential` blocks as documented below.
  /// [servicePrincipalId] The ID of the service principal for which this synchronization secrets should be stored. Changing this field forces a new resource to be created.
  SynchronizationSecretArgs({
    this.credentials,
    required this.servicePrincipalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<SynchronizationSecretCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<SynchronizationSecretCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': servicePrincipalId,
    };
  }

  factory SynchronizationSecretArgs.fromMap(Map<String, dynamic> map) {
    return SynchronizationSecretArgs(
      credentials: map['credentials'] == null ? null : (pulumi.Input.decodeList<SynchronizationSecretCredential>(map['credentials'], (value) => SynchronizationSecretCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalId: (map['servicePrincipalId'] as String).input(),
    );
  }
}

