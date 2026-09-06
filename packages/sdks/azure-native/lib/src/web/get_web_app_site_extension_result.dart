// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppSiteExtension.
class GetWebAppSiteExtensionResult {
  /// List of authors.
  final List<String>? authors;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Site Extension comment.
  final String? comment;
  /// Detailed description.
  final String? description;
  /// Count of downloads.
  final int? downloadCount;
  /// Site extension ID.
  final String? extensionId;
  /// Site extension type.
  final String? extensionType;
  /// Extension URL.
  final String? extensionUrl;
  /// Feed URL.
  final String? feedUrl;
  /// Icon URL.
  final String? iconUrl;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Installed timestamp.
  final String? installedDateTime;
  /// Installer command line parameters.
  final String? installerCommandLineParams;
  /// Kind of resource.
  final String? kind;
  /// License URL.
  final String? licenseUrl;
  /// &lt;code&gt;true&lt;/code&gt; if the local version is the latest version; &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool? localIsLatestVersion;
  /// Local path.
  final String? localPath;
  /// The name of the resource
  final String? name;
  /// Project URL.
  final String? projectUrl;
  /// Provisioning state.
  final String? provisioningState;
  /// Published timestamp.
  final String? publishedDateTime;
  /// Summary description.
  final String? summary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Version information.
  final String? version;

  /// Creates a new [GetWebAppSiteExtensionResult].
  /// [authors] List of authors.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [comment] Site Extension comment.
  /// [description] Detailed description.
  /// [downloadCount] Count of downloads.
  /// [extensionId] Site extension ID.
  /// [extensionType] Site extension type.
  /// [extensionUrl] Extension URL.
  /// [feedUrl] Feed URL.
  /// [iconUrl] Icon URL.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [installedDateTime] Installed timestamp.
  /// [installerCommandLineParams] Installer command line parameters.
  /// [kind] Kind of resource.
  /// [licenseUrl] License URL.
  /// [localIsLatestVersion] &lt;code&gt;true&lt;/code&gt; if the local version is the latest version; &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [localPath] Local path.
  /// [name] The name of the resource
  /// [projectUrl] Project URL.
  /// [provisioningState] Provisioning state.
  /// [publishedDateTime] Published timestamp.
  /// [summary] Summary description.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] Optional.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version information.
  const GetWebAppSiteExtensionResult({
    this.authors,
    this.azureApiVersion,
    this.comment,
    this.description,
    this.downloadCount,
    this.extensionId,
    this.extensionType,
    this.extensionUrl,
    this.feedUrl,
    this.iconUrl,
    this.id,
    this.installedDateTime,
    this.installerCommandLineParams,
    this.kind,
    this.licenseUrl,
    this.localIsLatestVersion,
    this.localPath,
    this.name,
    this.projectUrl,
    this.provisioningState,
    this.publishedDateTime,
    this.summary,
    this.systemData,
    this.title,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authors': ?authors,
      'azureApiVersion': ?azureApiVersion,
      'comment': ?comment,
      'description': ?description,
      'downloadCount': ?downloadCount,
      'extensionId': ?extensionId,
      'extensionType': ?extensionType,
      'extensionUrl': ?extensionUrl,
      'feedUrl': ?feedUrl,
      'iconUrl': ?iconUrl,
      'id': ?id,
      'installedDateTime': ?installedDateTime,
      'installerCommandLineParams': ?installerCommandLineParams,
      'kind': ?kind,
      'licenseUrl': ?licenseUrl,
      'localIsLatestVersion': ?localIsLatestVersion,
      'localPath': ?localPath,
      'name': ?name,
      'projectUrl': ?projectUrl,
      'provisioningState': ?provisioningState,
      'publishedDateTime': ?publishedDateTime,
      'summary': ?summary,
      'systemData': ?systemData?.toMap(),
      'title': ?title,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetWebAppSiteExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteExtensionResult(
      authors: (() { final guardedValue = map['authors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      downloadCount: (() { final guardedValue = map['downloadCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      extensionId: (() { final guardedValue = map['extensionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionType: (() { final guardedValue = map['extensionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionUrl: (() { final guardedValue = map['extensionUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      feedUrl: (() { final guardedValue = map['feedUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      installedDateTime: (() { final guardedValue = map['installedDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      installerCommandLineParams: (() { final guardedValue = map['installerCommandLineParams']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseUrl: (() { final guardedValue = map['licenseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localIsLatestVersion: (() { final guardedValue = map['localIsLatestVersion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectUrl: (() { final guardedValue = map['projectUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishedDateTime: (() { final guardedValue = map['publishedDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
