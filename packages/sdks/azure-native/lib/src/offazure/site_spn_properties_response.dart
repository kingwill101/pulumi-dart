// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for site properties.
class SiteSpnPropertiesResponse {
  /// Gets or sets the AAD Authority URL which was used to request the token for
  /// the
  /// service principal.
  final pulumi.Input<String>? aadAuthority;
  /// Gets or sets the application/client Id for the service principal with which
  /// the
  /// on-premise management/data plane components would communicate
  /// with our Azure
  /// services.
  final pulumi.Input<String>? applicationId;
  /// Gets or sets the intended audience for the service principal.
  final pulumi.Input<String>? audience;
  /// Gets or sets the object Id of the service principal with which the on-premise
  ///
  /// management/data plane components would communicate with our Azure
  /// services.
  final pulumi.Input<String>? objectId;
  /// Gets or sets the raw certificate data for building certificate expiry flows.
  final pulumi.Input<String>? rawCertData;
  /// Gets or sets the tenant Id for the service principal with which the
  /// on-premise
  /// management/data plane components would communicate with
  /// our Azure services.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [SiteSpnPropertiesResponse].
  /// [aadAuthority] Gets or sets the AAD Authority URL which was used to request the token for
  /// [applicationId] Gets or sets the application/client Id for the service principal with which
  /// [audience] Gets or sets the intended audience for the service principal.
  /// [objectId] Gets or sets the object Id of the service principal with which the on-premise
  /// [rawCertData] Gets or sets the raw certificate data for building certificate expiry flows.
  /// [tenantId] Gets or sets the tenant Id for the service principal with which the
  SiteSpnPropertiesResponse({
    this.aadAuthority,
    this.applicationId,
    this.audience,
    this.objectId,
    this.rawCertData,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': ?aadAuthority,
      'applicationId': ?applicationId,
      'audience': ?audience,
      'objectId': ?objectId,
      'rawCertData': ?rawCertData,
      'tenantId': ?tenantId,
    };
  }

  factory SiteSpnPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SiteSpnPropertiesResponse(
      aadAuthority: map['aadAuthority'] == null ? null : (map['aadAuthority']! as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
      audience: map['audience'] == null ? null : (map['audience']! as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      rawCertData: map['rawCertData'] == null ? null : (map['rawCertData']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

