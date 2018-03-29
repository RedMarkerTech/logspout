# logspout

Contents of this repo.

```
git clone https://github.com/gliderlabs/logspout
```

Replace `modules.go` with:

```
package main

import (
  _ "github.com/looplab/logspout-logstash"
  _ "github.com/gliderlabs/logspout/transports/udp"
  _ "github.com/gliderlabs/logspout/transports/tcp"
)
```

Save `https://github.com/looplab/logspout-logstash/blob/master/logstash.go` in `adapters/logstash`.

Apply [this patch](https://github.com/gliderlabs/logspout/pull/375/files) to `build.sh`.
