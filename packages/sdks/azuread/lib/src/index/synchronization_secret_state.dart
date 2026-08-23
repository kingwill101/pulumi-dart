// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_secret_credential.dart';

/// Input properties used for looking up and filtering SynchronizationSecret resources.
class SynchronizationSecretState {
  /// One or more `credential` blocks as documented below.
  final pulumi.Input<List<SynchronizationSecretCredential>>? credentials;
  /// The ID of the service principal for which this synchronization secrets should be stored. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? servicePrincipalId;

  /// Creates a new [SynchronizationSecretState].
  /// [credentials] One or more `credential` blocks as documented below.
  /// [servicePrincipalId] The ID of the service principal for which this synchronization secrets should be stored. Changing this field forces a new resource to be created.
  const SynchronizationSecretState({
    this.credentials,
    this.servicePrincipalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<SynchronizationSecretCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<SynchronizationSecretCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': ?servicePrincipalId,
    };
  }

  factory SynchronizationSecretState.fromMap(Map<String, dynamic> map) {
    return SynchronizationSecretState(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SynchronizationSecretCredential>(guardedValue, (value) => SynchronizationSecretCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
