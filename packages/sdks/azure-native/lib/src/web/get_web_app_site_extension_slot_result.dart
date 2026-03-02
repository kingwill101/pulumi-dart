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
  /// <code>true</code> if the local version is the latest version; <code>false</code> otherwise.
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
  /// [localIsLatestVersion] <code>true</code> if the local version is the latest version; <code>false</code> otherwise.
  /// [localPath] Local path.
  /// [name] Resource Name.
  /// [projectUrl] Project URL.
  /// [provisioningState] Provisioning state.
  /// [publishedDateTime] Published timestamp.
  /// [summary] Summary description.
  /// [title] Optional.
  /// [type] Resource type.
  /// [version] Version information.
  GetWebAppSiteExtensionSlotResult({
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
      authors: map['authors'] == null ? null : (map['authors']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      comment: map['comment'] == null ? null : map['comment']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      downloadCount: map['downloadCount'] == null ? null : map['downloadCount']! as int,
      extensionId: map['extensionId'] == null ? null : map['extensionId']! as String,
      extensionType: map['extensionType'] == null ? null : map['extensionType']! as String,
      extensionUrl: map['extensionUrl'] == null ? null : map['extensionUrl']! as String,
      feedUrl: map['feedUrl'] == null ? null : map['feedUrl']! as String,
      iconUrl: map['iconUrl'] == null ? null : map['iconUrl']! as String,
      id: map['id'] as String,
      installedDateTime: map['installedDateTime'] == null ? null : map['installedDateTime']! as String,
      installerCommandLineParams: map['installerCommandLineParams'] == null ? null : map['installerCommandLineParams']! as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      licenseUrl: map['licenseUrl'] == null ? null : map['licenseUrl']! as String,
      localIsLatestVersion: map['localIsLatestVersion'] == null ? null : map['localIsLatestVersion']! as bool,
      localPath: map['localPath'] == null ? null : map['localPath']! as String,
      name: map['name'] as String,
      projectUrl: map['projectUrl'] == null ? null : map['projectUrl']! as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState']! as String,
      publishedDateTime: map['publishedDateTime'] == null ? null : map['publishedDateTime']! as String,
      summary: map['summary'] == null ? null : map['summary']! as String,
      title: map['title'] == null ? null : map['title']! as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

