# termux-box64

# [English](README.md) | 한국어

터먹스에서 proot-distro나 proot, chroot 없이 box64를 설치하는 스크립트임.
당연히 이런것들 없이 glibc만 이용하니 네이티브에서 구동하는거나 마찬가지이다.

설치하려면 이 명령어 복붙하고 실행하면 된다.
설치 전에 미러를 변경해도 좋다.

```bash
termux-change-repo
```

한국에 산다면 전남고 미러를 추천한다.

```bash
curl -LO [https://raw.githubusercontent.com/hajs110208/termux-box64/refs/heads/main/install.sh](https://raw.githubusercontent.com/hajs110208/termux-box64/refs/heads/main/install.sh) && chmod +x install.sh && ./install.sh
```

설치 완료 후 box64를 사용하려면,

```bash
box64
```

box64 뒤에 원하는 실행 파일 이름을 입력하고 엔터를 치면 잘 실행되는 것을 볼 수 있다.
