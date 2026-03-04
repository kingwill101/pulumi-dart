// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL configuration for a DomainMapping resource.
class SslSettingsAppengineV1alpha {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final pulumi.Input<String>? certificateId;

  /// Creates a new [SslSettingsAppengineV1alpha].
  /// [certificateId] ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  SslSettingsAppengineV1alpha({this.certificateId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateId': ?certificateId};
  }

  factory SslSettingsAppengineV1alpha.fromMap(Map<String, dynamic> map) {
    return SslSettingsAppengineV1alpha(
      certificateId: (() {
        final guardedValue = map['certificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
