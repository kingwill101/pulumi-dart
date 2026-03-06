// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppSiteExtensionSlot.
class GetWebAppSiteExtensionSlotResult {
  /// List of authors.
  final List<String>? authors;
  /// The Azure API version of the resource.
  final String azureApiVersion;
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
  /// Resource Id.
  final String id;
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
  /// Resource Name.
  final String name;
  /// Project URL.
  final String? projectUrl;
  /// Provisioning state.
  final String? provisioningState;
  /// Published timestamp.
  final String? publishedDateTime;
  /// Summary description.
  final String? summary;
  final String? title;
  /// Resource type.
  final String type;
  /// Version information.
  final String? version;

  /// Creates a new [GetWebAppSiteExtensionSlotResult].
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
  /// [id] Resource Id.
  /// [installedDateTime] Installed timestamp.
  /// [installerCommandLineParams] Installer command line parameters.
  /// [kind] Kind of resource.
  /// [licenseUrl] License URL.
  /// [localIsLatestVersion] &lt;code&gt;true&lt;/code&gt; if the local version is the latest version; &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [localPath] Local path.
  /// [name] Resource Name.
  /// [projectUrl] Project URL.
  /// [provisioningState] Provisioning state.
  /// [publishedDateTime] Published timestamp.
  /// [summary] Summary description.
  /// [title] Optional.
  /// [type] Resource type.
  /// [version] Version information.
  const GetWebAppSiteExtensionSlotResult({
    this.authors,
    required this.azureApiVersion,
    this.comment,
    this.description,
    this.downloadCount,
    this.extensionId,
    this.extensionType,
    this.extensionUrl,
    this.feedUrl,
    this.iconUrl,
    required this.id,
    this.installedDateTime,
    this.installerCommandLineParams,
    this.kind,
    this.licenseUrl,
    this.localIsLatestVersion,
    this.localPath,
    required this.name,
    this.projectUrl,
    this.provisioningState,
    this.publishedDateTime,
    this.summary,
    this.title,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authors': ?authors,
      'azureApiVersion': azureApiVersion,
      'comment': ?comment,
      'description': ?description,
      'downloadCount': ?downloadCount,
      'extensionId': ?extensionId,
      'extensionType': ?extensionType,
      'extensionUrl': ?extensionUrl,
      'feedUrl': ?feedUrl,
      'iconUrl': ?iconUrl,
      'id': id,
      'installedDateTime': ?installedDateTime,
      'installerCommandLineParams': ?installerCommandLineParams,
      'kind': ?kind,
      'licenseUrl': ?licenseUrl,
      'localIsLatestVersion': ?localIsLatestVersion,
      'localPath': ?localPath,
      'name': name,
      'projectUrl': ?projectUrl,
      'provisioningState': ?provisioningState,
      'publishedDateTime': ?publishedDateTime,
      'summary': ?summary,
      'title': ?title,
      'type': type,
      'version': ?version,
    };
  }

  factory GetWebAppSiteExtensionSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteExtensionSlotResult(
      authors: (() { final guardedValue = map['authors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      downloadCount: (() { final guardedValue = map['downloadCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      extensionId: (() { final guardedValue = map['extensionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionType: (() { final guardedValue = map['extensionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionUrl: (() { final guardedValue = map['extensionUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      feedUrl: (() { final guardedValue = map['feedUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      installedDateTime: (() { final guardedValue = map['installedDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      installerCommandLineParams: (() { final guardedValue = map['installerCommandLineParams']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseUrl: (() { final guardedValue = map['licenseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localIsLatestVersion: (() { final guardedValue = map['localIsLatestVersion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      projectUrl: (() { final guardedValue = map['projectUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishedDateTime: (() { final guardedValue = map['publishedDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

