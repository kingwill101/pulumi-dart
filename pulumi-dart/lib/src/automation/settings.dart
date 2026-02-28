/// Runtime descriptor for project settings.
class ProjectRuntimeInfo {
  const ProjectRuntimeInfo({required this.name, this.options});

  factory ProjectRuntimeInfo.fromJson(Map<String, dynamic> json) {
    final options = json['options'];
    return ProjectRuntimeInfo(
      name: '${json['name'] ?? ''}',
      options: options is Map
          ? options.map((key, value) => MapEntry('$key', value))
          : null,
    );
  }

  final String name;
  final Map<String, dynamic>? options;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name.isNotEmpty) 'name': name,
      if (options != null) 'options': options,
    };
  }
}

/// Project template config entry.
class ProjectTemplateConfigValue {
  const ProjectTemplateConfigValue({
    this.description,
    this.defaultValue,
    this.secret,
  });

  factory ProjectTemplateConfigValue.fromJson(Map<String, dynamic> json) {
    return ProjectTemplateConfigValue(
      description: json['description'] == null
          ? null
          : '${json['description']}',
      defaultValue: json['default'] == null ? null : '${json['default']}',
      secret: json['secret'] == null ? null : json['secret'] == true,
    );
  }

  final String? description;
  final String? defaultValue;
  final bool? secret;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) 'description': description,
      if (defaultValue != null) 'default': defaultValue,
      if (secret != null) 'secret': secret,
    };
  }
}

/// Project template metadata.
class ProjectTemplate {
  const ProjectTemplate({
    this.description,
    this.quickstart,
    this.config,
    this.important,
  });

  factory ProjectTemplate.fromJson(Map<String, dynamic> json) {
    Map<String, ProjectTemplateConfigValue>? config;
    final rawConfig = json['config'];
    if (rawConfig is Map) {
      config = <String, ProjectTemplateConfigValue>{};
      for (final entry in rawConfig.entries) {
        final value = entry.value;
        if (value is Map<String, dynamic>) {
          config['${entry.key}'] = ProjectTemplateConfigValue.fromJson(value);
        } else if (value is Map) {
          config['${entry.key}'] = ProjectTemplateConfigValue.fromJson(
            value.map((key, value) => MapEntry('$key', value)),
          );
        }
      }
    }

    return ProjectTemplate(
      description: json['description'] == null
          ? null
          : '${json['description']}',
      quickstart: json['quickstart'] == null ? null : '${json['quickstart']}',
      config: config,
      important: json['important'] == null ? null : json['important'] == true,
    );
  }

  final String? description;
  final String? quickstart;
  final Map<String, ProjectTemplateConfigValue>? config;
  final bool? important;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) 'description': description,
      if (quickstart != null) 'quickstart': quickstart,
      if (config != null)
        'config': config!.map((key, value) => MapEntry(key, value.toJson())),
      if (important != null) 'important': important,
    };
  }
}

/// Backend configuration in project settings.
class ProjectBackend {
  const ProjectBackend({this.url});

  factory ProjectBackend.fromJson(Map<String, dynamic> json) {
    return ProjectBackend(url: json['url'] == null ? null : '${json['url']}');
  }

  final String? url;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (url != null) 'url': url};
  }
}

/// Typed Pulumi project settings model.
class ProjectSettings {
  const ProjectSettings({
    required this.name,
    required this.runtime,
    this.main,
    this.description,
    this.author,
    this.website,
    this.license,
    this.config,
    this.template,
    this.backend,
    this.extras = const <String, dynamic>{},
  });

  factory ProjectSettings.fromJson(Map<String, dynamic> json) {
    final runtimeRaw = json['runtime'];
    final runtime = runtimeRaw is Map<String, dynamic>
        ? ProjectRuntimeInfo.fromJson(runtimeRaw)
        : (runtimeRaw is Map
              ? ProjectRuntimeInfo.fromJson(
                  runtimeRaw.map((key, value) => MapEntry('$key', value)),
                )
              : '${runtimeRaw ?? ''}');

    final extras = Map<String, dynamic>.from(json)
      ..remove('name')
      ..remove('runtime')
      ..remove('main')
      ..remove('description')
      ..remove('author')
      ..remove('website')
      ..remove('license')
      ..remove('config')
      ..remove('template')
      ..remove('backend');

    return ProjectSettings(
      name: '${json['name'] ?? ''}',
      runtime: runtime,
      main: json['main'] == null ? null : '${json['main']}',
      description: json['description'] == null
          ? null
          : '${json['description']}',
      author: json['author'] == null ? null : '${json['author']}',
      website: json['website'] == null ? null : '${json['website']}',
      license: json['license'] == null ? null : '${json['license']}',
      config: json['config'] == null ? null : '${json['config']}',
      template: json['template'] is Map
          ? ProjectTemplate.fromJson(
              (json['template'] as Map).map(
                (key, value) => MapEntry('$key', value),
              ),
            )
          : null,
      backend: json['backend'] is Map
          ? ProjectBackend.fromJson(
              (json['backend'] as Map).map(
                (key, value) => MapEntry('$key', value),
              ),
            )
          : null,
      extras: extras,
    );
  }

  final String name;
  final Object runtime;
  final String? main;
  final String? description;
  final String? author;
  final String? website;
  final String? license;
  final String? config;
  final ProjectTemplate? template;
  final ProjectBackend? backend;
  final Map<String, dynamic> extras;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'runtime': runtime is ProjectRuntimeInfo
          ? (runtime as ProjectRuntimeInfo).toJson()
          : runtime,
      if (main != null) 'main': main,
      if (description != null) 'description': description,
      if (author != null) 'author': author,
      if (website != null) 'website': website,
      if (license != null) 'license': license,
      if (config != null) 'config': config,
      if (template != null) 'template': template!.toJson(),
      if (backend != null) 'backend': backend!.toJson(),
      ...extras,
    };
  }
}

/// Typed Pulumi stack settings model.
class StackSettings {
  const StackSettings({
    this.secretsProvider,
    this.encryptedKey,
    this.encryptionSalt,
    this.config,
    this.extras = const <String, dynamic>{},
  });

  factory StackSettings.fromJson(Map<String, dynamic> json) {
    final canonical = Map<String, dynamic>.from(json);
    if (canonical.containsKey('secretsprovider')) {
      canonical['secretsProvider'] = canonical['secretsprovider'];
      canonical.remove('secretsprovider');
    }
    if (canonical.containsKey('encryptedkey')) {
      canonical['encryptedKey'] = canonical['encryptedkey'];
      canonical.remove('encryptedkey');
    }
    if (canonical.containsKey('encryptionsalt')) {
      canonical['encryptionSalt'] = canonical['encryptionsalt'];
      canonical.remove('encryptionsalt');
    }

    final extras = Map<String, dynamic>.from(canonical)
      ..remove('secretsProvider')
      ..remove('encryptedKey')
      ..remove('encryptionSalt')
      ..remove('config');

    return StackSettings(
      secretsProvider: canonical['secretsProvider'] == null
          ? null
          : '${canonical['secretsProvider']}',
      encryptedKey: canonical['encryptedKey'] == null
          ? null
          : '${canonical['encryptedKey']}',
      encryptionSalt: canonical['encryptionSalt'] == null
          ? null
          : '${canonical['encryptionSalt']}',
      config: canonical['config'] is Map
          ? (canonical['config'] as Map).map(
              (key, value) => MapEntry('$key', value),
            )
          : null,
      extras: extras,
    );
  }

  final String? secretsProvider;
  final String? encryptedKey;
  final String? encryptionSalt;
  final Map<String, dynamic>? config;
  final Map<String, dynamic> extras;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (secretsProvider != null) 'secretsProvider': secretsProvider,
      if (encryptedKey != null) 'encryptedKey': encryptedKey,
      if (encryptionSalt != null) 'encryptionSalt': encryptionSalt,
      if (config != null) 'config': config,
      ...extras,
    };
  }
}
