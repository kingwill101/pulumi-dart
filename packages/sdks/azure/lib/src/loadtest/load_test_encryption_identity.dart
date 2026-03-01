// ignore_for_file: unused_element, unnecessary_cast


class LoadTestEncryptionIdentity {
  /// The User Assigned Identity ID that should be assigned to this Load Test Encryption. Changing this forces a new Load Test to be created.
  ///
  /// > **Note:** The User Assigned Identity ID specified here must also exist in `identity.identity_ids`.
  final String identityId;
  /// Specifies the type of Managed Identity that should be assigned to this Load Test Encryption. Possible values are `SystemAssigned` or `UserAssigned`. Changing this forces a new Load Test to be created.
  final String type;

  /// Creates a new [LoadTestEncryptionIdentity].
  /// [identityId] The User Assigned Identity ID that should be assigned to this Load Test Encryption. Changing this forces a new Load Test to be created.
  /// [type] Specifies the type of Managed Identity that should be assigned to this Load Test Encryption. Possible values are `SystemAssigned` or `UserAssigned`. Changing this forces a new Load Test to be created.
  LoadTestEncryptionIdentity({
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
      identityId: map['identityId'] as String,
      type: map['type'] as String,
    );
  }
}

