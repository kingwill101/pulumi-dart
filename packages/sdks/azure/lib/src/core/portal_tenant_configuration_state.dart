// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PortalTenantConfiguration resources.
class PortalTenantConfigurationState {
  /// Is the private tile markdown storage which used to display custom dynamic and static content enabled?
  ///
  /// &gt; **Note:** When `privateMarkdownStorageEnforced` is set to `true`, only external storage configuration (URI) is allowed for Markdown tiles. Inline content configuration will be prohibited.
  final pulumi.Input<bool?>? privateMarkdownStorageEnforced;

  /// Creates a new [PortalTenantConfigurationState].
  /// [privateMarkdownStorageEnforced] Is the private tile markdown storage which used to display custom dynamic and static content enabled?
  const PortalTenantConfigurationState({
    this.privateMarkdownStorageEnforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateMarkdownStorageEnforced': ?privateMarkdownStorageEnforced,
    };
  }

  factory PortalTenantConfigurationState.fromMap(Map<String, dynamic> map) {
    return PortalTenantConfigurationState(
      privateMarkdownStorageEnforced: (() { final guardedValue = map['privateMarkdownStorageEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
