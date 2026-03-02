// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Client resources.
class ClientState {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String>? brand;
  /// Output only. Unique identifier of the OAuth client.
  final pulumi.Input<String>? clientId;
  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String>? displayName;
  /// Output only. Client secret of the OAuth client.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secret;

  /// Creates a new [ClientState].
  /// [brand] Identifier of the brand to which this client
  /// [clientId] Output only. Unique identifier of the OAuth client.
  /// [displayName] Human-friendly name given to the OAuth client.
  /// [secret] Output only. Client secret of the OAuth client.
  ClientState({
    this.brand,
    this.clientId,
    this.displayName,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': ?brand,
      'clientId': ?clientId,
      'displayName': ?displayName,
      'secret': ?secret,
    };
  }

  factory ClientState.fromMap(Map<String, dynamic> map) {
    return ClientState(
      brand: map['brand'] == null ? null : (map['brand'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
    );
  }
}

