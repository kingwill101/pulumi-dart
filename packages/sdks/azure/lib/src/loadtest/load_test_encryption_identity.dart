// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadTestEncryptionIdentity {
  /// The User Assigned Identity ID that should be assigned to this Load Test Encryption. Changing this forces a new Load Test to be created.
  ///
  /// &gt; **Note:** The User Assigned Identity ID specified here must also exist in `identity.identity_ids`.
  final pulumi.Input<String> identityId;
  /// Specifies the type of Managed Identity that should be assigned to this Load Test Encryption. Possible values are `SystemAssigned` or `UserAssigned`. Changing this forces a new Load Test to be created.
  final pulumi.Input<String> type;

  /// Creates a new [LoadTestEncryptionIdentity].
  /// [identityId] The User Assigned Identity ID that should be assigned to this Load Test Encryption. Changing this forces a new Load Test to be created.
  /// [type] Specifies the type of Managed Identity that should be assigned to this Load Test Encryption. Possible values are `SystemAssigned` or `UserAssigned`. Changing this forces a new Load Test to be created.
  const LoadTestEncryptionIdentity({
    required this.identityId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': identityId,
      'type': type,
    };
  }

  factory LoadTestEncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return LoadTestEncryptionIdentity(
      identityId: pulumi.Input.fromValue(map['identityId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

