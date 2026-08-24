// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_domains_result_validation_data.dart';
import 'get_pages_domains_result_verification_data.dart';

class GetPagesDomainsResult {
  /// Available values: "google", "letsEncrypt".
  final pulumi.Input<String> certificateAuthority;
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> domainId;
  final pulumi.Input<String> id;
  /// The domain name.
  final pulumi.Input<String> name;
  /// Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  final pulumi.Input<String> status;
  final pulumi.Input<GetPagesDomainsResultValidationData> validationData;
  final pulumi.Input<GetPagesDomainsResultVerificationData> verificationData;
  final pulumi.Input<String> zoneTag;

  /// Creates a new [GetPagesDomainsResult].
  /// [certificateAuthority] Available values: "google", "letsEncrypt".
  /// [createdOn] Required.
  /// [domainId] Required.
  /// [id] Required.
  /// [name] The domain name.
  /// [status] Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  /// [validationData] Required.
  /// [verificationData] Required.
  /// [zoneTag] Required.
  const GetPagesDomainsResult({
    required this.certificateAuthority,
    required this.createdOn,
    required this.domainId,
    required this.id,
    required this.name,
    required this.status,
    required this.validationData,
    required this.verificationData,
    required this.zoneTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'createdOn': createdOn,
      'domainId': domainId,
      'id': id,
      'name': name,
      'status': status,
      'validationData': pulumi.Input.mapInputValue<GetPagesDomainsResultValidationData, Map<String, dynamic>>(validationData, (value) => value.toMap()),
      'verificationData': pulumi.Input.mapInputValue<GetPagesDomainsResultVerificationData, Map<String, dynamic>>(verificationData, (value) => value.toMap()),
      'zoneTag': zoneTag,
    };
  }

  factory GetPagesDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainsResult(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      validationData: pulumi.Input.fromValue(GetPagesDomainsResultValidationData.fromMap((map['validationData']! as Map).cast<String, dynamic>())),
      verificationData: pulumi.Input.fromValue(GetPagesDomainsResultVerificationData.fromMap((map['verificationData']! as Map).cast<String, dynamic>())),
      zoneTag: pulumi.Input.fromValue(map['zoneTag'] as String),
    );
  }
}
