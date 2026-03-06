// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_ui_branding_logo.dart';

class WidgetConfigUiBranding {
  /// Logo image.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigUiBrandingLogo>? logo;

  /// Creates a new [WidgetConfigUiBranding].
  /// [logo] Logo image.
  const WidgetConfigUiBranding({
    this.logo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logo': ?pulumi.Input.mapOptionalInputValue<WidgetConfigUiBrandingLogo, Map<String, dynamic>>(logo, (value) => value.toMap()),
    };
  }

  factory WidgetConfigUiBranding.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiBranding(
      logo: (() { final guardedValue = map['logo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigUiBrandingLogo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

