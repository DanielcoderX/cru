# cru (Crystal - Redis - urlShortner)
![Crystal](https://img.shields.io/badge/crystal-%23000000.svg?style=for-the-badge&logo=crystal&logoColor=white) ![Redis](https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white)

**Url shortner maded up with crystal language and redis database**

# Routing System
```javascript
  http://0.0.0.0:3000/  Default route(index) for getting url extended
  #Example:
    http://0.0.0.0:3000/12345678
    
  http://0.0.0.0:3000/new/ Generate url shortend
  #Example:
    http://0.0.0.0:3000/new/google.com
```
# Requirements
    ~> crystal (pacman -S crystal)

    ~> shards (pacman -S shards)

    ~> redis (pacman -S redis)
  
# Installation
```bash
  git clone https://github.com/DanielcoderX/cru.git & cd cru
  shards install
  shards build --threaded=4(your cpu core counts) --release
```
**output will be in ```bin/```**

## TODO
[ ] Add port & host changing
[ ] Setup Front


## Contributing
Pull requests are welcome :)
