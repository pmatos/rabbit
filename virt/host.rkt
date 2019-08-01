#lang racket/base
;; ---------------------------------------------------------------------------------------------------

(require ffi/unsafe
         ffi/unsafe/define)

;; ---------------------------------------------------------------------------------------------------
;;
;; Documentation for these bindings is at https://libvirt.org/html/libvirt-libvirt-host.html
;;
(define-ffi-definer define-virt (ffi-lib "libvirt"))

;; Types
(define _virConnect-ptr (_cpointer 'virConnect))

;; Functions

; virConnectAuthCallBackPtr

; virConnectBaselineCPU

; virConnectBaselineHypervisorCPU

; virConnectClose
(define-virt virConnectClone (_fun _virConnect-ptr -> _int))

; virConnectCloseFunc

; virConnectCompareCPU
(define-virt virConnectCompareCPU (_fun _virConnect-ptr _string _uint -> _int))

; virConnectCompareHypervisorCPU
(define-virt virConnectCompareHypervisorCPU (_fun _virConnect-ptr _string _string _string _string _string _uint -> _int))

; virConnectGetCPUModelNames

; virConnectGetCapabilities
(define-virt virConnectGetCapabilities (_fun _virConnect-ptr -> _string))

; virConnectGetHostname
(define-virt virConnectGetHostname (_fun _virConnect-ptr -> _string))

; virConnectGetLibVersion

; virConnectGetMaxVcpus

; virConnectGetSysinfo

; virConnectGetType

; virConnectGetURI

; virConnectGetVersion

; virConnectIsAlive

; virConnectIsEncrypted

; virConnectIsSecure

; virConnectOpen
(define-virt virConnectOpen
  (_fun _string -> _virConnect-ptr))

; virConnectOpenAuth

; virConnectOpenReadOnly

; virConnectRef

; virConnectRegisterCloseCallback

; virConnectSetKeepAlive

; virConnectUnregisterCloseCallback

; virGetVersion
  (define-virt virGetVersion
    (_fun (ver : (_ptr o _ulong)) (_pointer = 0) (_pointer = 0) -> (res : _int)
          -> (cond
               [(= res -1) #false]
               [else ver])))

; virInitialize

; virNodeAllocPages

; virNodeGetCPUMap

; virNodeGetCPUStats

; virNodeGetCellsFreeMemory

; virNodeGetFreeMemory

; virNodeGetFreePages

; virNodeGetInfo

; virNodeGetMemoryParameters

; virNodeGetMemoryStats

; virNodeGetSEVInfo

; virNodeGetSecurityModel

; virNodeSetMemoryParameters

; virNodeSuspendForDuration
