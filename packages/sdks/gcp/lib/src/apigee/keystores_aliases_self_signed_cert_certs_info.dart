// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_self_signed_cert_certs_info_cert_info.dart';

class KeystoresAliasesSelfSignedCertCertsInfo {
  /// (Output)
  /// List of all properties in the object.
  /// Structure is documented below.
  final pulumi.Input<List<KeystoresAliasesSelfSignedCertCertsInfoCertInfo>?>? certInfos;

  /// Creates a new [KeystoresAliasesSelfSignedCertCertsInfo].
  /// [certInfos] (Output)
  const KeystoresAliasesSelfSignedCertCertsInfo({
    this.certInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certInfos': ?pulumi.Input.mapOptionalInputValue<List<KeystoresAliasesSelfSignedCertCertsInfoCertInfo>, List<Map<String, dynamic>>>(certInfos, (value) => pulumi.Input.encodeList<KeystoresAliasesSelfSignedCertCertsInfoCertInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KeystoresAliasesSelfSignedCertCertsInfo.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertCertsInfo(
      certInfos: (() { final guardedValue = map['certInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeystoresAliasesSelfSignedCertCertsInfoCertInfo>(guardedValue, (value) => KeystoresAliasesSelfSignedCertCertsInfoCertInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
