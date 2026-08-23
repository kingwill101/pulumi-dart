// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_insights_insights_args_doc}
/// The set of arguments for Insights.
/// {@endtemplate}
/// {@macro pulumi_appinsights_insights_insights_args_doc}
class InsightsArgs {
  /// Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationType;
  /// Specifies the Application Insights component daily data volume cap in GB. Defaults to `100`.
  final pulumi.Input<double>? dailyDataCapInGb;
  final pulumi.Input<bool>? dailyDataCapNotificationsDisabled;
  /// Whether a notification email will be sent when the daily data volume cap is met. Defaults to `true`.
  final pulumi.Input<bool>? dailyDataCapNotificationsEnabled;
  final pulumi.Input<bool>? disableIpMasking;
  /// Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`.
  final pulumi.Input<bool>? forceCustomerStorageForProfiler;
  /// Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`.
  final pulumi.Input<bool>? internetIngestionEnabled;
  /// Should the Application Insights component support querying over the Public Internet? Defaults to `true`.
  final pulumi.Input<bool>? internetQueryEnabled;
  /// By default the real client IP is masked as `0.0.0.0` in the logs. Set this argument to `false` to disable masking and log the real client IP. Defaults to `true`.
  final pulumi.Input<bool>? ipMaskingEnabled;
  final pulumi.Input<bool>? localAuthenticationDisabled;
  /// Whether Non-Azure AD based Auth is enabled. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Application Insights component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`.
  final pulumi.Input<int>? retentionInDays;
  /// Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`.
  final pulumi.Input<double>? samplingPercentage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the id of a log analytics workspace resource.
  ///
  /// &gt; **Note:** `workspaceId` cannot be removed after set. More details can be found at [Migrate to workspace-based Application Insights resources](https://docs.microsoft.com/azure/azure-monitor/app/convert-classic-resource#migration-process). If `workspaceId` is not specified but you encounter a diff, this might indicate a Microsoft initiated automatic migration from classic resources to workspace-based resources. If this is the case, please update `workspaceId` in the config file to the new value.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [InsightsArgs].
  /// [applicationType] Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created.
  /// [dailyDataCapInGb] Specifies the Application Insights component daily data volume cap in GB. Defaults to `100`.
  /// [dailyDataCapNotificationsDisabled] Optional.
  /// [dailyDataCapNotificationsEnabled] Whether a notification email will be sent when the daily data volume cap is met. Defaults to `true`.
  /// [disableIpMasking] Optional.
  /// [forceCustomerStorageForProfiler] Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`.
  /// [internetIngestionEnabled] Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`.
  /// [internetQueryEnabled] Should the Application Insights component support querying over the Public Internet? Defaults to `true`.
  /// [ipMaskingEnabled] By default the real client IP is masked as `0.0.0.0` in the logs. Set this argument to `false` to disable masking and log the real client IP. Defaults to `true`.
  /// [localAuthenticationDisabled] Optional.
  /// [localAuthenticationEnabled] Whether Non-Azure AD based Auth is enabled. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Application Insights component. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created.
  /// [retentionInDays] Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`.
  /// [samplingPercentage] Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workspaceId] Specifies the id of a log analytics workspace resource.
  const InsightsArgs({
    required this.applicationType,
    this.dailyDataCapInGb,
    this.dailyDataCapNotificationsDisabled,
    this.dailyDataCapNotificationsEnabled,
    this.disableIpMasking,
    this.forceCustomerStorageForProfiler,
    this.internetIngestionEnabled,
    this.internetQueryEnabled,
    this.ipMaskingEnabled,
    this.localAuthenticationDisabled,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.retentionInDays,
    this.samplingPercentage,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': applicationType,
      'dailyDataCapInGb': ?dailyDataCapInGb,
      'dailyDataCapNotificationsDisabled': ?dailyDataCapNotificationsDisabled,
      'dailyDataCapNotificationsEnabled': ?dailyDataCapNotificationsEnabled,
      'disableIpMasking': ?disableIpMasking,
      'forceCustomerStorageForProfiler': ?forceCustomerStorageForProfiler,
      'internetIngestionEnabled': ?internetIngestionEnabled,
      'internetQueryEnabled': ?internetQueryEnabled,
      'ipMaskingEnabled': ?ipMaskingEnabled,
      'localAuthenticationDisabled': ?localAuthenticationDisabled,
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'samplingPercentage': ?samplingPercentage,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory InsightsArgs.fromMap(Map<String, dynamic> map) {
    return InsightsArgs(
      applicationType: pulumi.Input.fromValue(map['applicationType'] as String),
      dailyDataCapInGb: (() { final guardedValue = map['dailyDataCapInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dailyDataCapNotificationsDisabled: (() { final guardedValue = map['dailyDataCapNotificationsDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dailyDataCapNotificationsEnabled: (() { final guardedValue = map['dailyDataCapNotificationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableIpMasking: (() { final guardedValue = map['disableIpMasking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceCustomerStorageForProfiler: (() { final guardedValue = map['forceCustomerStorageForProfiler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetIngestionEnabled: (() { final guardedValue = map['internetIngestionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetQueryEnabled: (() { final guardedValue = map['internetQueryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipMaskingEnabled: (() { final guardedValue = map['ipMaskingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthenticationDisabled: (() { final guardedValue = map['localAuthenticationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      samplingPercentage: (() { final guardedValue = map['samplingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
