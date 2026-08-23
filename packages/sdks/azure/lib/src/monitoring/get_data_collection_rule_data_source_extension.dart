// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDataSourceExtension {
  /// A JSON String which specifies the extension setting.
  final pulumi.Input<String> extensionJson;
  /// The name of the VM extension.
  final pulumi.Input<String> extensionName;
  /// Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: `performanceCounter`, `windowsEventLog`,and `syslog`.
  final pulumi.Input<List<String>> inputDataSources;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [GetDataCollectionRuleDataSourceExtension].
  /// [extensionJson] A JSON String which specifies the extension setting.
  /// [extensionName] The name of the VM extension.
  /// [inputDataSources] Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: `performanceCounter`, `windowsEventLog`,and `syslog`.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  const GetDataCollectionRuleDataSourceExtension({
    required this.extensionJson,
    required this.extensionName,
    required this.inputDataSources,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionJson': extensionJson,
      'extensionName': extensionName,
      'inputDataSources': inputDataSources,
      'name': name,
      'streams': streams,
    };
  }

  factory GetDataCollectionRuleDataSourceExtension.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceExtension(
      extensionJson: pulumi.Input.fromValue(map['extensionJson'] as String),
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      inputDataSources: pulumi.Input.fromValue((map['inputDataSources'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}
