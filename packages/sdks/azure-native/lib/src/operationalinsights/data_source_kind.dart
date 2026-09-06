import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the DataSource.
enum DataSourceKind implements pulumi.PulumiEnum<String> {
  valueWindowsEvent("WindowsEvent"),
  valueWindowsPerformanceCounter("WindowsPerformanceCounter"),
  valueIISLogs("IISLogs"),
  valueLinuxSyslog("LinuxSyslog"),
  valueLinuxSyslogCollection("LinuxSyslogCollection"),
  valueLinuxPerformanceObject("LinuxPerformanceObject"),
  valueLinuxPerformanceCollection("LinuxPerformanceCollection"),
  valueCustomLog("CustomLog"),
  valueCustomLogCollection("CustomLogCollection"),
  valueAzureAuditLog("AzureAuditLog"),
  valueAzureActivityLog("AzureActivityLog"),
  valueGenericDataSource("GenericDataSource"),
  valueChangeTrackingCustomPath("ChangeTrackingCustomPath"),
  valueChangeTrackingPath("ChangeTrackingPath"),
  valueChangeTrackingServices("ChangeTrackingServices"),
  valueChangeTrackingDataTypeConfiguration("ChangeTrackingDataTypeConfiguration"),
  valueChangeTrackingDefaultRegistry("ChangeTrackingDefaultRegistry"),
  valueChangeTrackingRegistry("ChangeTrackingRegistry"),
  valueChangeTrackingLinuxPath("ChangeTrackingLinuxPath"),
  valueLinuxChangeTrackingPath("LinuxChangeTrackingPath"),
  valueChangeTrackingContentLocation("ChangeTrackingContentLocation"),
  valueWindowsTelemetry("WindowsTelemetry"),
  valueOffice365("Office365"),
  valueSecurityWindowsBaselineConfiguration("SecurityWindowsBaselineConfiguration"),
  valueSecurityCenterSecurityWindowsBaselineConfiguration("SecurityCenterSecurityWindowsBaselineConfiguration"),
  valueSecurityEventCollectionConfiguration("SecurityEventCollectionConfiguration"),
  valueSecurityInsightsSecurityEventCollectionConfiguration("SecurityInsightsSecurityEventCollectionConfiguration"),
  valueImportComputerGroup("ImportComputerGroup"),
  valueNetworkMonitoring("NetworkMonitoring"),
  valueItsm("Itsm"),
  valueDnsAnalytics("DnsAnalytics"),
  valueApplicationInsights("ApplicationInsights"),
  valueSqlDataClassification("SqlDataClassification");

  const DataSourceKind(this.wireValue);
  @override
  final String wireValue;

  static DataSourceKind fromValue(String value) {
    for (final item in DataSourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSourceKind value: $value');
  }
}
