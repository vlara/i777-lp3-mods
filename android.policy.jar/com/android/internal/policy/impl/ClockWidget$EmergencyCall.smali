.class Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCall"
.end annotation


# instance fields
.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 708
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 709
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 767
    if-eqz p0, :cond_5

    if-nez p1, :cond_5

    .line 777
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 769
    .restart local p0
    :cond_5
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 770
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 774
    :cond_27
    if-nez p0, :cond_2d

    if-eqz p1, :cond_2d

    move-object p0, p1

    .line 775
    goto :goto_4

    .line 777
    :cond_2d
    const-string p0, ""

    goto :goto_4
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 713
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 716
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 720
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 721
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 725
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 726
    const v0, 0x1020376

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 728
    return-void
.end method

.method public updateText()V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const v4, 0x104038e

    .line 732
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 734
    .local v0, simState:I
    if-ne v0, v2, :cond_31

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_31

    .line 735
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    :goto_30
    return-void

    .line 737
    :cond_31
    if-ne v0, v2, :cond_4b

    .line 738
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 740
    :cond_4b
    if-ne v0, v3, :cond_67

    .line 741
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 743
    :cond_67
    const/4 v1, 0x2

    if-ne v0, v1, :cond_87

    .line 744
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104039f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 746
    :cond_87
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a7

    .line 747
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104039d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 749
    :cond_a7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_c5

    .line 750
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 752
    :cond_c5
    if-nez v0, :cond_fa

    .line 754
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 755
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 757
    :cond_e1
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$500()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 761
    :cond_fa
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30
.end method
