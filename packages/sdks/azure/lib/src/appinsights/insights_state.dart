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
    this.appId,
    this.applicationType,
    this.connectionString,
    this.dailyDataCapInGb,
    this.dailyDataCapNotificationsDisabled,
    this.disableIpMasking,
    this.forceCustomerStorageForProfiler,
    this.instrumentationKey,
    this.internetIngestionEnabled,
    this.internetQueryEnabled,
    this.localAuthenticationDisabled,
    this.location,
    this.name,
    this.resourceGroupName,
    this.retentionInDays,
    this.samplingPercentage,
    this.tags,
    this.workspaceId,
  });

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
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      applicationType: map['applicationType'] == null ? null : (map['applicationType']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      dailyDataCapInGb: map['dailyDataCapInGb'] == null ? null : (map['dailyDataCapInGb']! as double).input(),
      dailyDataCapNotificationsDisabled: map['dailyDataCapNotificationsDisabled'] == null ? null : (map['dailyDataCapNotificationsDisabled']! as bool).input(),
      disableIpMasking: map['disableIpMasking'] == null ? null : (map['disableIpMasking']! as bool).input(),
      forceCustomerStorageForProfiler: map['forceCustomerStorageForProfiler'] == null ? null : (map['forceCustomerStorageForProfiler']! as bool).input(),
      instrumentationKey: map['instrumentationKey'] == null ? null : (map['instrumentationKey']! as String).input(),
      internetIngestionEnabled: map['internetIngestionEnabled'] == null ? null : (map['internetIngestionEnabled']! as bool).input(),
      internetQueryEnabled: map['internetQueryEnabled'] == null ? null : (map['internetQueryEnabled']! as bool).input(),
      localAuthenticationDisabled: map['localAuthenticationDisabled'] == null ? null : (map['localAuthenticationDisabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      samplingPercentage: map['samplingPercentage'] == null ? null : (map['samplingPercentage']! as double).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

