# Disable App Nap on macOS

This Node module disables app nap for the currently running process by starting an activity.

#### Usage

```
const appNap = require('app-nap')
const reason = 'Keeping app live'

appNap.disable(reason)
```

#### License
MIT, please see `LICENSE` for details.