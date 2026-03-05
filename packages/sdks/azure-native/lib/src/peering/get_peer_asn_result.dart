// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_detail_response.dart';

/// Result data returned by getPeerAsn.
class GetPeerAsnResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The error message for the validation state
  final String errorMessage;
  /// The ID of the resource.
  final String id;
  /// The name of the resource.
  final String name;
  /// The Autonomous System Number (ASN) of the peer.
  final int? peerAsn;
  /// The contact details of the peer.
  final List<ContactDetailResponse>? peerContactDetail;
  /// The name of the peer.
  final String? peerName;
  /// The type of the resource.
  final String type;
  /// The validation state of the ASN associated with the peer.
  final String validationState;

  /// Creates a new [GetPeerAsnResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errorMessage] The error message for the validation state
  /// [id] The ID of the resource.
  /// [name] The name of the resource.
  /// [peerAsn] The Autonomous System Number (ASN) of the peer.
  /// [peerContactDetail] The contact details of the peer.
  /// [peerName] The name of the peer.
  /// [type] The type of the resource.
  /// [validationState] The validation state of the ASN associated with the peer.
  GetPeerAsnResult({
    required this.azureApiVersion,
    required this.errorMessage,
    required this.id,
    required this.name,
    this.peerAsn,
    this.peerContactDetail,
    this.peerName,
    required this.type,
    required this.validationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'errorMessage': errorMessage,
      'id': id,
      'name': name,
      'peerAsn': ?peerAsn,
      'peerContactDetail': ?(() { final guardedValue = peerContactDetail; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContactDetailResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'peerName': ?peerName,
      'type': type,
      'validationState': validationState,
    };
  }

  factory GetPeerAsnResult.fromMap(Map<String, dynamic> map) {
    return GetPeerAsnResult(
      azureApiVersion: map['azureApiVersion'] as String,
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return guardedValue as int; })(),
      peerContactDetail: (() { final guardedValue = map['peerContactDetail']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactDetailResponse>(guardedValue, (value) => ContactDetailResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      peerName: (() { final guardedValue = map['peerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      validationState: map['validationState'] as String,
    );
  }
}

