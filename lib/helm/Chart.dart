/// Application charts are a collection of templates that can be packaged into versioned archives
/// to be deployed.

/// Library charts provide useful utilities or functions for the chart developer. They're included as
/// a dependency of application charts to inject those utilities and functions into the rendering
/// pipeline. Library charts do not define any templates and therefore cannot be deployed.

class Chart {
  String apiVersion = "v2";
  String name = "blogs";
  String description = '';
  String type = '';

  /// This is the chart version. This version number should be incremented each time you make changes
  /// to the chart and its templates, including the app version.
  /// Versions are expected to follow Semantic Versioning (https://semver.org/)
  String version = '';

  /// This is the version number of the application being deployed. This version number should be
  /// incremented each time you make changes to the application. Versions are not expected to
  /// follow Semantic Versioning. They should reflect the version the application is using.
  /// It is recommended to use it with quotes.
  String appVersion = "1.16.0";

  Chart({
    required this.apiVersion,
    required this.description,
    required this.name,
    required this.type,
    required this.version,
    required this.appVersion,
  });
}
