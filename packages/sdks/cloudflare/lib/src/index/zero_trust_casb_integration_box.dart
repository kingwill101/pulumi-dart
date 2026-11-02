// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_box_box_server_authentication.dart';

class ZeroTrustCasbIntegrationBox {
  /// Authenticate with Box server authentication. Before creating the integration, add the Cloudflare CASB application in Box Admin Console &gt; Integrations &gt; Platform Apps Manager &gt; Server Authentication Apps using client ID `puaghckpy0578r8p6f3g0rf860unup4r`.
  final pulumi.Input<ZeroTrustCasbIntegrationBoxBoxServerAuthentication?>? boxServerAuthentication;

  /// Creates a new [ZeroTrustCasbIntegrationBox].
  /// [boxServerAuthentication] Authenticate with Box server authentication. Before creating the integration, add the Cloudflare CASB application in Box Admin Console &gt; Integrations &gt; Platform Apps Manager &gt; Server Authentication Apps using client ID `puaghckpy0578r8p6f3g0rf860unup4r`.
  const ZeroTrustCasbIntegrationBox({
    this.boxServerAuthentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boxServerAuthentication': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationBoxBoxServerAuthentication, Map<String, dynamic>>(boxServerAuthentication, (value) => value.toMap()),
    };
  }

  factory ZeroTrustCasbIntegrationBox.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationBox(
      boxServerAuthentication: (() { final guardedValue = map['boxServerAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationBoxBoxServerAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
