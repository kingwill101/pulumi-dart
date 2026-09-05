// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticWebAppFunctionAppRegistration resources.
class StaticWebAppFunctionAppRegistrationState {
  /// The ID of a Linux or Windows Function App to connect to the Static Web App as a Backend. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one Function App can be connected to a Static Web App. Multiple Function Apps are not currently supported.
  ///
  /// &gt; **Note:** Connecting a Function App resource to a Static Web App resource updates the Function App to use AuthV2 and configures the `azureStaticWebAppV2` which may need to be accounted for by the use of `ignoreChanges` depending on the existing `authSettingsV2` configuration of the target Function App.
  final pulumi.Input<String?>? functionAppId;
  /// The ID of the Static Web App to register the Function App to as a backend. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? staticWebAppId;

  /// Creates a new [StaticWebAppFunctionAppRegistrationState].
  /// [functionAppId] The ID of a Linux or Windows Function App to connect to the Static Web App as a Backend. Changing this forces a new resource to be created.
  /// [staticWebAppId] The ID of the Static Web App to register the Function App to as a backend. Changing this forces a new resource to be created.
  const StaticWebAppFunctionAppRegistrationState({
    this.functionAppId,
    this.staticWebAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppId': ?functionAppId,
      'staticWebAppId': ?staticWebAppId,
    };
  }

  factory StaticWebAppFunctionAppRegistrationState.fromMap(Map<String, dynamic> map) {
    return StaticWebAppFunctionAppRegistrationState(
      functionAppId: (() { final guardedValue = map['functionAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticWebAppId: (() { final guardedValue = map['staticWebAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
