.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMusicMovingBoxCurrentMarginBottom:I

.field private mMusicMovingBoxCurrentMarginTop:I

.field private mMusicMovingBoxOffset:I

.field private mMusicMovingBoxOrinalY:I

.field private mTextBottom:I

.field private mTextLeft:I

.field private mTextRight:I

.field private mTextTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 3
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v4, 0xc8

    const/16 v5, 0x32

    const/4 v7, 0x0

    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 377
    .local v0, rawY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 378
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 380
    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1d8

    .line 451
    :cond_22
    :goto_22
    const/4 v1, 0x1

    return v1

    .line 382
    :pswitch_24
    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOrinalY:I

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    goto :goto_22

    .line 390
    :pswitch_57
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOrinalY:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 393
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    if-lez v1, :cond_a9

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    if-ge v1, v2, :cond_a9

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_22

    .line 399
    :cond_a9
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    if-lt v1, v2, :cond_22

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 404
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_22

    .line 408
    :cond_dd
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    if-gez v1, :cond_120

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_120

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 412
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_22

    .line 414
    :cond_120
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_22

    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 419
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_22

    .line 425
    :pswitch_155
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 426
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    if-ge v1, v2, :cond_194

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    neg-int v3, v3

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 435
    :goto_189
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_22

    .line 433
    :cond_194
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V

    goto :goto_189

    .line 438
    :cond_19c
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1d0

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 447
    :goto_1c6
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_22

    .line 445
    :cond_1d0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V

    goto :goto_1c6

    .line 380
    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_24
        :pswitch_155
        :pswitch_57
        :pswitch_155
    .end packed-switch
.end method
