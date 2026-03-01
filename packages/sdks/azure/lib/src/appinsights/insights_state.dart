// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Insights resources.
class InsightsState {
  /// The App ID associated with this Application Insights component.
  final pulumi.Input<String>? appId;
  /// Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationType;
  /// The Connection String for this Application Insights component. (Sensitive)
  final pulumi.Input<String>? connectionString;
  /// Specifies the Application Insights component daily data volume cap in GB. Defaults to `100`.
  final pulumi.Input<double>? dailyDataCapInGb;
  /// Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to `false`.
  final pulumi.Input<bool>? dailyDataCapNotificationsDisabled;
  /// By default the real client IP is masked as `0.0.0.0` in the logs. Use this argument to disable masking and log the real client IP. Defaults to `false`.
  final pulumi.Input<bool>? disableIpMasking;
  /// Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`.
  final pulumi.Input<bool>? forceCustomerStorageForProfiler;
  /// The Instrumentation Key for this Application Insights component. (Sensitive)
  final pulumi.Input<String>? instrumentationKey;
  /// Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`.
  final pulumi.Input<bool>? internetIngestionEnabled;
  /// Should the Application Insights component support querying over the Public Internet? Defaults to `true`.
  final pulumi.Input<bool>? internetQueryEnabled;
  /// Disable Non-Azure AD based Auth. Defaults to `false`.
  final pulumi.Input<bool>? localAuthenticationDisabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Application Insights component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`.
  final pulumi.Input<int>? retentionInDays;
  /// Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`.
  final pulumi.Input<double>? samplingPercentage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the id of a log analytics workspace resource.
  ///
  /// > **Note:** `workspace_id` cannot be removed after set. More details can be found at [Migrate to workspace-based Application Insights resources](https://docs.microsoft.com/azure/azure-monitor/app/convert-classic-resource#migration-process). If `workspace_id` is not specified but you encounter a diff, this might indicate a Microsoft initiated automatic migration from classic resources to workspace-based resources. If this is the case, please update `workspace_id` in the config file to the new value.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [InsightsState].
  /// [appId] The App ID associated with this Application Insights component.
  /// [applicationType] Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created.
  /// [connectionString] The Connection String for this Application Insights component. (Sensitive)
  /// [dailyDataCapInGb] Specifies the Application Insights component daily data volume cap in GB. Defaults to `100`.
  /// [dailyDataCapNotificationsDisabled] Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to `false`.
  /// [disableIpMasking] By default the real client IP is masked as `0.0.0.0` in the logs. Use this argument to disable masking and log the real client IP. Defaults to `false`.
  /// [forceCustomerStorageForProfiler] Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`.
  /// [instrumentationKey] The Instrumentation Key for this Application Insights component. (Sensitive)
  /// [internetIngestionEnabled] Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`.
  /// [internetQueryEnabled] Should the Application Insights component support querying over the Public Internet? Defaults to `true`.
  /// [localAuthenticationDisabled] Disable Non-Azure AD based Auth. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Application Insights component. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created.
  /// [retentionInDays] Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`.
  /// [samplingPercentage] Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workspaceId] Specifies the id of a log analytics workspace resource.
  InsightsState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? applicationType,
    pulumi.Output<String>? connectionString,
    pulumi.Output<double>? dailyDataCapInGb,
    pulumi.Output<bool>? dailyDataCapNotificationsDisabled,
    pulumi.Output<bool>? disableIpMasking,
    pulumi.Output<bool>? forceCustomerStorageForProfiler,
    pulumi.Output<String>? instrumentationKey,
    pulumi.Output<bool>? internetIngestionEnabled,
    pulumi.Output<bool>? internetQueryEnabled,
    pulumi.Output<bool>? localAuthenticationDisabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<double>? samplingPercentage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceId,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      applicationType = pulumi.Input.asOptionalInput<String>(applicationType),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dailyDataCapInGb = pulumi.Input.asOptionalInput<double>(dailyDataCapInGb),
      dailyDataCapNotificationsDisabled = pulumi.Input.asOptionalInput<bool>(dailyDataCapNotificationsDisabled),
      disableIpMasking = pulumi.Input.asOptionalInput<bool>(disableIpMasking),
      forceCustomerStorageForProfiler = pulumi.Input.asOptionalInput<bool>(forceCustomerStorageForProfiler),
      instrumentationKey = pulumi.Input.asOptionalInput<String>(instrumentationKey),
      internetIngestionEnabled = pulumi.Input.asOptionalInput<bool>(internetIngestionEnabled),
      internetQueryEnabled = pulumi.Input.asOptionalInput<bool>(internetQueryEnabled),
      localAuthenticationDisabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationDisabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      samplingPercentage = pulumi.Input.asOptionalInput<double>(samplingPercentage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'applicationType': ?applicationType,
      'connectionString': ?connectionString,
      'dailyDataCapInGb': ?dailyDataCapInGb,
      'dailyDataCapNotificationsDisabled': ?dailyDataCapNotificationsDisabled,
      'disableIpMasking': ?disableIpMasking,
      'forceCustomerStorageForProfiler': ?forceCustomerStorageForProfiler,
      'instrumentationKey': ?instrumentationKey,
      'internetIngestionEnabled': ?internetIngestionEnabled,
      'internetQueryEnabled': ?internetQueryEnabled,
      'localAuthenticationDisabled': ?localAuthenticationDisabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'samplingPercentage': ?samplingPercentage,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory InsightsState.fromMap(Map<String, dynamic> map) {
    return InsightsState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      applicationType: map['applicationType'] == null ? null : pulumi.Output.create<String>(map['applicationType'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dailyDataCapInGb: map['dailyDataCapInGb'] == null ? null : pulumi.Output.create<double>(map['dailyDataCapInGb'] as double),
      dailyDataCapNotificationsDisabled: map['dailyDataCapNotificationsDisabled'] == null ? null : pulumi.Output.create<bool>(map['dailyDataCapNotificationsDisabled'] as bool),
      disableIpMasking: map['disableIpMasking'] == null ? null : pulumi.Output.create<bool>(map['disableIpMasking'] as bool),
      forceCustomerStorageForProfiler: map['forceCustomerStorageForProfiler'] == null ? null : pulumi.Output.create<bool>(map['forceCustomerStorageForProfiler'] as bool),
      instrumentationKey: map['instrumentationKey'] == null ? null : pulumi.Output.create<String>(map['instrumentationKey'] as String),
      internetIngestionEnabled: map['internetIngestionEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetIngestionEnabled'] as bool),
      internetQueryEnabled: map['internetQueryEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetQueryEnabled'] as bool),
      localAuthenticationDisabled: map['localAuthenticationDisabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationDisabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      samplingPercentage: map['samplingPercentage'] == null ? null : pulumi.Output.create<double>(map['samplingPercentage'] as double),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

