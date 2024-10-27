import 'package:flutter/material.dart';

class InfiniteScrollController extends ScrollController {
  final VoidCallback onLoadMore;
  final double threshold;

  InfiniteScrollController({
    required this.onLoadMore,
    this.threshold = 0.8,
  }) {
    addListener(_scrollListener);
  }

  void _scrollListener() {
    if (position.extentAfter < position.maxScrollExtent * (1 - threshold)) {
      onLoadMore();
    }
  }

  @override
  void dispose() {
    removeListener(_scrollListener);
    super.dispose();
  }
}

// Tính năng pagination có những điểm chính:

// Infinite scroll với threshold
// Loading indicators cho initial load và load more
// Pull to refresh
// Error handling
// Grid layout với smooth scrolling
// State management để track loading states và current page

// Những cải tiến có thể thêm:

// Scroll to top button
// Load more button thay vì auto load
// Save scroll position khi navigate back
// Preload next page
// Skeleton loading UI