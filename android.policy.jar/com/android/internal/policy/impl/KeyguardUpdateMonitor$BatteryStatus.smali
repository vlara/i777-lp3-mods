.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final health:I

.field public final level:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .parameter "status"
    .parameter "level"
    .parameter "plugged"
    .parameter "health"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 178
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 179
    iput p3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 180
    iput p4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 181
    return-void
.end method
