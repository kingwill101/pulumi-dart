// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_dns_settings_custom_dns.dart';
import 'registration_dns_settings_glue_record.dart';

class RegistrationDnsSettings {
  /// Configuration for an arbitrary DNS provider.
  /// Structure is documented below.
  final pulumi.Input<RegistrationDnsSettingsCustomDns>? customDns;
  /// The list of glue records for this Registration. Commonly empty.
  /// Structure is documented below.
  final pulumi.Input<List<RegistrationDnsSettingsGlueRecord>>? glueRecords;

  /// Creates a new [RegistrationDnsSettings].
  /// [customDns] Configuration for an arbitrary DNS provider.
  /// [glueRecords] The list of glue records for this Registration. Commonly empty.
  RegistrationDnsSettings({
    this.customDns,
    this.glueRecords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': ?pulumi.Input.mapOptionalInputValue<RegistrationDnsSettingsCustomDns, Map<String, dynamic>>(customDns, (value) => value.toMap()),
      'glueRecords': ?pulumi.Input.mapOptionalInputValue<List<RegistrationDnsSettingsGlueRecord>, List<Map<String, dynamic>>>(glueRecords, (value) => pulumi.Input.encodeList<RegistrationDnsSettingsGlueRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegistrationDnsSettings.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettings(
      customDns: map['customDns'] == null ? null : (RegistrationDnsSettingsCustomDns.fromMap((map['customDns']! as Map).cast<String, dynamic>())).input(),
      glueRecords: map['glueRecords'] == null ? null : (pulumi.Input.decodeList<RegistrationDnsSettingsGlueRecord>(map['glueRecords']!, (value) => RegistrationDnsSettingsGlueRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

