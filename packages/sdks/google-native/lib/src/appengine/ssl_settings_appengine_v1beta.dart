// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings_ssl_management_type_appengine_v1beta.dart';

/// SSL configuration for a DomainMapping resource.
class SslSettingsAppengineV1beta {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final pulumi.Input<String>? certificateId;
  /// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  final pulumi.Input<SslSettingsSslManagementTypeAppengineV1beta>? sslManagementType;

  /// Creates a new [SslSettingsAppengineV1beta].
  /// [certificateId] ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  /// [sslManagementType] SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  const SslSettingsAppengineV1beta({
    this.certificateId,
    this.sslManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'sslManagementType': ?pulumi.Input.mapOptionalInputValue<SslSettingsSslManagementTypeAppengineV1beta, String>(sslManagementType, (value) => value.wireValue),
    };
  }

  factory SslSettingsAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return SslSettingsAppengineV1beta(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslManagementType: (() { final guardedValue = map['sslManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslSettingsSslManagementTypeAppengineV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}

