// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountIdentity {
  /// The Principal ID for the Service Principal associated with the Identity of this Data Share Account.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Data Share Account.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Data Share Account. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The assigned `principal_id` and `tenant_id` can be retrieved after the identity `type` has been set to `SystemAssigned` and the Data Share Account has been created. More details are available below.
  final pulumi.Input<String> type;

  /// Creates a new [AccountIdentity].
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Data Share Account.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Data Share Account.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Data Share Account. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created.
  AccountIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory AccountIdentity.fromMap(Map<String, dynamic> map) {
    return AccountIdentity(
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

