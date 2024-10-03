# Flutter Monorepos with Melos

More information on [Melos](https://invertase.docs.page/melos)

Install Melos as a global package via pub.dev so it can be used from anywhere on your system:

```
dart pub global activate melos
```

Workspace directory structure:

```
my_project
├── apps
│   ├── apps_1
│   └── apps_2
├── packages
│   ├── package_1
│   └── package_2
├── melos.yaml
├── pubspec.yaml
└── README.md

```

Bootstraping project:

```
melos bootstrap
```
